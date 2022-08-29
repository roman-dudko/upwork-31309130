*** Settings ***
Library  SeleniumLibrary
Variables  variables.yaml

*** Variables ***


*** Keywords ***
Begin Web Test
    Open Browser  ${app_url}  ${browser}

End Web Test
    Close Browser

Login To Application
    Wait Until Page Contains  Forgot password?
    Input Text  id:username  ${username}
    Input Text  id:password  ${password}
    Click Button  id:signIn

Naviate To Catalog
    Wait Until Page Contains  Catalog
    Click Element  Catalog

Select N-Central From Catalog
    Wait Until Page Contains  N-Central
    Click Button  id:requestN-central

Select Business Group
    Wait Until Page Contains  Select Business Group
    Input Text  id:“subtenantSelector”  ${business_group}
    Click Button  css:[class="btn btn-sm btn-primary"]

Input Deployment Information
    Click Element  id:treeview-1027-record-7
    Click Element  id:numberField-1041-inputEl
    Input Text  id:numberField-1041-inputEl  ${lease_days}
    Input Text  id:textfield-1048-inputEl  ${machine_name}

Input vSphere Information
    Click Element  id:treeview-1027-record-8
    Click Element  id:numberField-1057-inputEl
    Input Text  id:numberField-1057-inputEl  ${cpu}
    Click Element  id:numberField-1060-inputEl
    Input Text  id:numberField-1060-inputEl  ${memory}
    Select From List By Label  id:dropdownlist-1122-inputEl  ${location}
    Select From List By Label  id:dropdownlist-1124-inputEl  ${network}
    Select From List By Label  id:dropdownlist-1126-inputEl  ${iso_mount}

Submit Mahine Creation Form
    Click Button  id:catalog-request-submit