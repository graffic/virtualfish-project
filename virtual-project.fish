function __vf_cdp --description "Go to virtualenv project"
	if not set -q VIRTUAL_ENV
		echo "Activate a virtual environment first"
		return 1
	end
		
	set PROJECT_FILE $VIRTUAL_ENV/.project
	if test -e $PROJECT_FILE
		cd (cat $PROJECT_FILE)
	else
		echo "No .project file available for this env: $PROJECT_FILE"
	end
end


function __vf_setp --description "Set the current directory as project directory for the current env"
	if not set -q VIRTUAL_ENV
		echo "Activate a virtual environment first"
		return 1
	end

	pwd > $VIRTUAL_ENV/.project
end


function virtualfish_project_go --on-event virtualenv_did_activate
	set PROJECT_FILE $VIRTUAL_ENV/.project
	if test -e $PROJECT_FILE
		cd (cat $PROJECT_FILE)
	end
end


