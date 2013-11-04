$DEPTH = 0

def log desc, &some_proc
  indent = '  ' * $DEPTH 

  time = Time.new
  puts indent +'Begining ' + desc + ', ' + time.to_s
  $DEPTH += 1

  aux = some_proc.call  

  $DEPTH -= 1
  time = Time.new
  puts indent + desc + ' finished, returning: ' + aux.to_s + ', ' + time.to_s
end

log 'first_bloc' do
  log 'second_bloc' do
    log 'third_bloc' do
      2**8
    end  
    [1,4,2,5,67,3,6].sort
  end
  'Paquito chocolatero'.reverse
end