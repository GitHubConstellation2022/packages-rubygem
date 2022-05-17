<h1 align="center">Using GitHub Packages for publishing rubygems</h1>

<p align="center">
  <a href="#mega-prerequisites">Prerequisites</a> •  
  <a href="#books-resources">Resources</a>
</p>


Sample repo to demonstrate working with the GitHub RubyGem registry

### Publishing

- Here we will be building and publishing a sample ping gem, which returns pong on the successful call to it, checkout the source [here](https://github.com/GitHubConstellation2022/packages-rubygem/blob/main/lib/sample_gem.rb).
- To build a gem you will require gemspec file, checkout the sample gemspec [here](https://github.com/GitHubConstellation2022/packages-rubygem/blob/main/samplegem.gemspec).
- [This](https://github.com/GitHubConstellation2022/packages-rubygem/blob/main/.github/workflows/publish-gem.yml) workflow publishes the gem to github packages registry on every push to main branch in this repository ( or by manual trigger ).
- If you want to publish manually ( i.e. without any workflow ) you can follow the steps in the given workflow or rubygems specific docs [here](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-rubygems-registry)


### Installing
- For Bundler, add your GitHub user or organization as a source in your Gemfile to fetch gems from this new source. For example, you can add a new source block to your Gemfile that uses GitHub Packages only for the packages you specify, replacing GEM NAME with the package you want to install from GitHub Packages and OWNER with the user or organization that owns the repository containing the gem you want to install.

```
source "https://rubygems.org"
gem "rails"
source "https://rubygems.pkg.github.com/OWNER" do
  gem "GEM NAME"
end
```

- Install the package

`$ gem install octo-gem --version "0.1.1"`


---

## :mega: Prerequisites

- A [GitHub.com account](https://github.com/join) with a [verified e-mail address](https://docs.github.com/en/free-pro-team@latest/github/getting-started-with-github/verifying-your-email-address)
- Basic understanding of `yaml` syntax
- Basic understanding of DevOps processes
- Basic understanding of software package registries (e.g. GitHub Packages, rubygems)
- Nice to have: experience with GitHub Actions or other automation servers such as Jenkins or TravisCI

## :books: Resources

- [Introduction to YAML: Learn YAML in 5 minutes](https://www.codeproject.com/Articles/1214409/Learn-YAML-in-five-minutes)
- [GitHub Docs: GitHub Actions](https://docs.github.com/actions)
- [GitHub Docs: Workflow syntax](https://docs.github.com/actions/reference/workflow-syntax-for-github-actions)
- [GitHub Docs: REST API](https://docs.github.com/rest)
- [GitHub Docs: GraphQL API](https://docs.github.com/graphql)
- [GitHub Docs: GitHub Packages](https://docs.github.com/packages)
