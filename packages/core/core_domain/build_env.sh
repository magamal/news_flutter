#!/bin/bash

echo "Select environment:"
echo "1) dev"
echo "2) staging"
echo "3) prod"
read -p "Enter number [1-3]: " ENV_NUM

case $ENV_NUM in
  1)
    ENV="dev"
    ;;
  2)
    ENV="staging"
    ;;
  3)
    ENV="prod"
    ;;
  *)
    echo "Invalid selection."
    exit 1
    ;;
esac

ENV_FILE="assets/env/.env.$ENV"

if [ ! -f "$ENV_FILE" ]; then
  echo "Env file $ENV_FILE does not exist!"
  exit 1
fi

# Update the path in env.dart
sed -i '' "s|@Envied(path: 'assets/env/.*'|@Envied(path: 'assets/env/.env.$ENV'|" lib/env/env.dart

# Run build_runner
dart run build_runner build --delete-conflicting-outputs
