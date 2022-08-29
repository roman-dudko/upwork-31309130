*** Settings ***
Test Setup  Begin Web Test
Test Teardown  End Web Test

Resource  resourses/common.robot

*** Variables ***


*** Test Cases ***
Create vSphere Mahine
    Login To Application
    Naviate To Catalog
    Select N-Central From Catalog
    Select Business Group
    Input Deployment Information
    Input vSphere Information
    Submit Mahine Creation Form

*** Keywords ***
