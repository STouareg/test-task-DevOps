#!/bin/bash
PS3='Please enter your choice: '
options=("Ansible container" "Terraform container" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Ansible container")
            docker build -t ansible-container:latest ./ansible-container/ && \
            docker run -it -v ~/test-task-genesis/ansible-container/ansible-workdir:/ansible-workdir/ -v ~/test-task-genesis/ansible-container/SSH-keys:/SSH-keys/ ansible-container:latest /bin/bash
            break
            ;;
        "Terraform container")
            docker build -t terraform-container:latest ./terraform-container/ && \
            docker run -it -v ~/test-task-genesis/terraform-container/terraform-workdir:/terraform-workdir/ -v  ~/test-task-genesis/terraform-container/SSH-keys:/SSH-keys/ terraform-container:latest /bin/bash
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "Please, enter valid choice";;
    esac
done