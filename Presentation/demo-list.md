## Create

cd into root dir

`puppet module generate glennsarti-dotnetcore`

~~~
C:\Source\pupconf-src [master]> puppet module generate glennsarti-dotnetcore
We need to create a metadata.json file for this module.  Please answer the
following questions; if the question is not applicable to this module, feel free
to leave it blank.

Puppet uses Semantic Versioning (semver.org) to version modules.
What version is this module?  [0.1.0]
--> 0.0.1

Who wrote this module?  [glennsarti]
-->

What license does this module code fall under?  [Apache-2.0]
-->

How would you describe this module in a single sentence?
--> Installs Dot Net Core

Where is this module's source code repository?
-->

Where can others go to learn more about this module?
-->

Where can others go to file issues about this module?
-->

----------------------------------------
{
  "name": "glennsarti-dotnetcore",
  "version": "0.0.1",
  "author": "glennsarti",
  "summary": "Installs Dot Net Core",
  "license": "Apache-2.0",
  "source": "",
  "project_page": null,
  "issues_url": null,
  "dependencies": [
    {"name":"puppetlabs-stdlib","version_requirement":">= 1.0.0"}
  ],
  "data_provider": null
}
----------------------------------------

About to generate this metadata; continue? [n/Y]
--> y

Notice: Generating module at C:\Source\pupconf-src/dotnetcore...
Notice: Populating templates...
Finished; module generated in dotnetcore.
dotnetcore/examples
dotnetcore/examples/init.pp
dotnetcore/Gemfile
dotnetcore/manifests
dotnetcore/manifests/init.pp
dotnetcore/metadata.json
dotnetcore/Rakefile
dotnetcore/README.md
dotnetcore/spec
dotnetcore/spec/classes
dotnetcore/spec/classes/init_spec.rb
dotnetcore/spec/spec_helper.rb
C:\Source\pupconf-src [master +1 ~0 -0 !]>
~~~

cd into dotnetcore

`git init`
`git add --a`
`git commit -m "Initial commit"`

