LIST_FILE="${HOME}/.ssh_connect/.server_list"
_complete_conn_host (){
        COMPREPLY=()
        cur="${COMP_WORDS[COMP_CWORD]}"

        case ${COMP_WORDS[1]} in
                -i)
                    comp_ssh_hosts=`cat $LIST_FILE | \
                                        awk -F "|" '{print $3}' | \
                                        grep -v "^#" | grep -v -w "^con"
                    `
                    ;;
                -d)
                    comp_ssh_hosts=`cat $LIST_FILE | \
                                        awk -F "|" '{print $2}' | \
                                        grep -v "^#" | grep -v -w "^con"
                    `
                    ;;
                -t)
                    comp_ssh_hosts=`grep "^#" $LIST_FILE | awk '{print $2}'`
                    ;;
                -U)
                    comp_ssh_hosts=`echo -ne "--host --ip --port --id --type="`
                    ;;
                -D)
                    comp_ssh_hosts=`echo -ne "--ip= --host="`
                    ;;
                -I)
                    comp_ssh_hosts=`echo -ne "--type= --id= --host= --ip= --port= --key= --commant="`
                    ;;
                -A)
                    comp_ssh_hosts=`echo -ne "--type="`
                    ;;
                -R)
                    comp_ssh_hosts=`ls $LIST_FILE-backup.* | awk -F "backup." '{print "\t"$2}'; \
                                        echo "--remove --restore"`
                    ;;
                -L)
                	comp_ssh_hosts=""
                	;;
                *)
                    comp_ssh_hosts=`cat $LIST_FILE | \
                                        awk -F "|" '{print $2}' | \
                                        grep -v "^#" ;
                                    cat $LIST_FILE | \
                                        awk -F "|" '{print $3}' | \
                                        grep -v "^#"
                    `
                    ;;
        esac

        COMPREPLY=( $(compgen -W "${comp_ssh_hosts}" -- $cur))
        return 0
}

complete -F _complete_conn_host con
complete -F _complete_conn_host conn
