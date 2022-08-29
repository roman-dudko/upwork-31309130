*** Settings ***
Resource  ../resourses/common.robot


*** Test Cases ***
Create vSphere Mahine
    [Setup]  Begin Web Test
    Login To Application
    Naviate To Catalog
    Select N-Central From Catalog
    Select Business Group
    Input Deployment Information
    Input vSphere Information
    Submit Mahine Creation Form
    [Teardown]  End Web Test
