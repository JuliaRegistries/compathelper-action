using Test

function check_readme()
    repository_root = dirname(@__DIR__)
    readme_path = joinpath(repository_root, "README.md")
    example_path = joinpath(repository_root, "example.yml")
    readme_contents = read(readme_path, String)::String
    example_contents = read(example_path, String)::String
    @testset "Check README" begin
        @test occursin(example_contents, readme_contents)
    end
    return nothing
end

check_readme()
