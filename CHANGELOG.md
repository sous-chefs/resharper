# CHANGELOG for resharper

This file is used to list changes made in each version of resharper.

## Unreleased

- resolved cookstyle error: attributes/default.rb:3:1 refactor: `Chef/Style/CommentFormat`
- resolved cookstyle error: attributes/default.rb:6:1 refactor: `Chef/Style/CommentFormat`
- resolved cookstyle error: attributes/default.rb:7:1 refactor: `Chef/Style/CommentFormat`
- resolved cookstyle error: metadata.rb:6:1 refactor: `Chef/Modernize/RespondToInMetadata`
- resolved cookstyle error: metadata.rb:9:1 refactor: `Chef/RedundantCode/LongDescriptionMetadata`
- resolved cookstyle error: recipes/default.rb:2:1 refactor: `Chef/Style/CommentFormat`
- resolved cookstyle error: recipes/default.rb:5:1 refactor: `Chef/Style/CommentFormat`
- resolved cookstyle error: recipes/default.rb:6:1 refactor: `Chef/Style/CommentFormat`

## 3.0.0

* Support Chef 13, drop support for Chef 12.
* Upgrade to ReSharper 2018.1.
* Standardize testing environment across repos.  (AppVeyor, Kitchen, Rake, etc.)
* Upgrade development dependencies.

## 2.0

* Added support for installing ReSharper 2016+, which uses a non-MSI installer.

## 1.0

* Supports installing ReSharper 7.x

- - -
Refer to the [Markdown Syntax Guide](https://daringfireball.net/projects/markdown/syntax) for help with standard Markdown, and [Writing on GitHub](https://help.github.com/categories/writing-on-github/) for help with the GitHub dialect of Markdown.
