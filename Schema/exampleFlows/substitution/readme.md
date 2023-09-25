Last Updated:  7/29/2019

A substitution is a key / value pair that you can have defined in a yaml file under
a substitutions property at the root.  Substitution keys need to be at least one
character in length and not have any leading or trailing whitespace.  Substitution
values must be either a string, number or boolean value.

Substitution processing will look for key values in a flow yaml file and replace it
with the supplied value by Archy.  This is done at the end of the pre-processing
phase after Archy has embedded all externally referenced objects.

Assuming you had an options yaml file that looked like this:
```
  substitutions:
    org_name: Acme Industries
```
And a flow with the yaml:
```
  inboundCall:
    name: My Inbound Call Flow
    defaultLanguage: en-us
    initialGreeting:
      tts: 'Welcome to {{org_name}}, this is the initial greeting.'
```
If that options file was specified as the options file in an Archy command such
as create, that flow yaml would become:
```
  inboundCall:
    name: My Inbound Call Flow
    defaultLanguage: en-us
    initialGreeting:
      tts: 'Welcome to Acme Industries, this is the initial greeting.'
```
so when the flow is created a caller would hear this for the initial greeting:
```
  "Welcome to Acme Industries, this is the initial greeting."
```