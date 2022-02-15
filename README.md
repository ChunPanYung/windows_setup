# windows_setup
Configuring Windows and WSL using Ansible, this playbook will first configure WSL, then windows through winrm.

[Setting up Windows host](https://docs.ansible.com/ansible/latest/user_guide/windows_setup.html)

## files & directories
- `hosts.yml`: inventory file

### Requirements
- `pip install pywinrm`
- Configure winrm


### Reference
[Setting up a windows Host](https://docs.ansible.com/ansible/latest/user_guide/windows_setup.html#common-winrm-issues)
[Windows Remote Management](https://docs.ansible.com/ansible/latest/user_guide/windows_winrm.html)
