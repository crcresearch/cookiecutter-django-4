#!/bin/bash
############################################################
# Help                                                     #
############################################################
Help()
{
   # Display Help
   echo "Find below some commands to help you run different modules."
   echo
   echo "Syntax: ./context_local_ts.sh [help|build|up]"
   echo "Options:"
   echo "build     Build the Stack."
   echo "up        Run the Stack without building it."
   echo "help      Print Help."

   echo
}

############################################################
############################################################
# Main program                                             #
############################################################
############################################################

# Process the input options. Add options as needed.        #
############################################################
# Get the options
if [ "$1" = "help" ]; then
    Help
elif [ "$1" = "build" ]; then
    docker-compose -f local-ts.yml build
elif [ "$1" = "up" ]; then
    docker-compose -f local-ts.yml up
else 
    echo "context_local_ts.sh: Invalid Command. Use the Help module by running ./context_local_ts.sh help"
fi