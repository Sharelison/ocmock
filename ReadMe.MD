# Openshift Wiremock (ocmock) 

Out of the box standalone wiremock stub server running on openshift. 
Mappings and files can be added to the stub using Configmaps.

## Getting Started

### Prerequisites

  - Openshift 3.11 or higher
    
### Installing

##### Template import (best-practice)
Create template and template objects into your namespace.
        
    1. oc create -f https://raw.githubusercontent.com/Sharelison/ocmock/master/openshift/ocmock-template.yaml
    2. oc process ocmock | oc apply -f -

##### Openshift Client Tools (oc)
######WARNING: This approach does not make use of the template and therefore you cannot use the configmaps to update the stub.
Stub mappings can be added using the [wiremock API](http://wiremock.org/docs/api/).

    1. oc new-app https://github.com/Sharelison/ocmock.git
    2. oc expose svc/ocmock (if needed)
## Usage

Use the route/ocmock host to interact with the stub. 
Update configmap (cm/ocmock-files) and configmap (cm/ocmock-mappings) to add stubdata and manipulate stub. 
Deploy stub after updating configmaps.

## Authors

* **Sharelison**
