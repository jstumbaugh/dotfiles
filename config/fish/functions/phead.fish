function phead --description="Pretty print CSV heads"
  head $argv | csvlook | view -
end
