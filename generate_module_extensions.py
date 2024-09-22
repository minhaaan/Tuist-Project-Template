import os

# 경로 설정 (프로젝트 구조에 따라 수정)
BASE_PATHS = {
    "shared": "Projects/Shared",
    "feature": "Projects/Feature",
    "core": "Projects/Core",
}
OUTPUT_FILE = "Tuist/ProjectDescriptionHelpers/Module.swift"


def generate_module_swift(modules):
    with open(OUTPUT_FILE, "w") as file:
        file.write("// This file is generated automatically by a script.\n")
        file.write("import ProjectDescription\n\n")

        # TargetDependency 확장 정의
        file.write("public extension TargetDependency {\n")

        for category, module_list in modules.items():
            file.write(f"  struct {category.capitalize()} {{\n")

            # 하위 모듈을 처리하기 위한 중첩 구조체 생성
            submodules = {}
            for module in module_list:
                parts = module["name"].split("/")
                if len(parts) > 1:
                    parent = parts[0]
                    child = parts[1]  # 이름을 그대로 사용
                    if parent not in submodules:
                        submodules[parent] = []
                    submodules[parent].append((child, module["path"]))
                else:
                    static_name = module["name"]  # 이름을 그대로 사용
                    file.write(
                        f"    public static let {static_name}: TargetDependency = .project(target: \"{module['name']}\", path: .relativeToRoot(\"{module['path']}\"))\n"
                    )

            for parent, children in submodules.items():
                parent_name = parent
                file.write(f"    public struct {parent_name} {{\n")
                for child, path in children:
                    file.write(
                        f'      public static let {child}: TargetDependency = .project(target: "{child}", path: .relativeToRoot("{path}"))\n'
                    )
                file.write("    }\n")

            file.write("  }\n\n")
        file.write("}\n")


# 하위 폴더를 재귀적으로 탐색하여 Project.swift 파일이 있는 모듈을 찾음
def find_modules(base_path):
    modules = []
    for root, dirs, files in os.walk(base_path):
        if "Project.swift" in files:
            module_name = os.path.relpath(root, base_path).replace(os.sep, "/")
            modules.append({"name": module_name, "path": root})
    return modules


# 모든 경로를 탐색하여 모듈을 찾음
def find_all_modules(base_paths):
    all_modules = {}
    for category, base_path in base_paths.items():
        modules = find_modules(base_path)
        all_modules[category] = modules
    return all_modules


# 스크립트 실행
if __name__ == "__main__":
    modules = find_all_modules(BASE_PATHS)
    generate_module_swift(modules)
    print(
        f"Module.swift has been generated with {sum(len(m) for m in modules.values())} modules."
    )
