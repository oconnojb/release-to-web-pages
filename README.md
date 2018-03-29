A dynamic website, created as a sample of work for Mohawk Paper.

The purpose of this site is to release the schedules of folding and cutting machines.

I don't know Mohawk's actual machine names, so I used O'Connor family names and randomly assigned them to a location (SH or SB) and type (folder or cutter).

The default path '/' displays the form (views/index.erb), complete with self-checking checkboxes.
The form submits to the path '/released', displaying the contents of views/released.erb
erb (or Enhanced RuBy) is a format that allows for the combining of HTML and Ruby in a single document. HTML is written as normal, and Ruby is designated by the <% %> and <%= %> tags.

When the form is submitted, the name of the machine is passed to the /released page in the params hash: params = {"machine_name" => "on"}
