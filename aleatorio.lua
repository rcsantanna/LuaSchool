function human ()
    cguess = 512
    count = 1
    n1 =  1
    n2 = 1024
    gameh()
end

function gameh()
  print ("Computador chutou:", cguess)
  print ("O número que você pensou é maior(1), menor(-1), ou igual (0)?")
  mmi = io.read("*n")
  if count > 10 then
    print ("Computador não conseguiu advinhar seu número")
    start()
  end
  if mmi == 1 then
    n1 = cguess + 1
    cguess = ((n2-n1)//2)+n1
    count = count+1
    gameh()
  elseif mmi == -1 then
    n2 = cguess - 1
    cguess = ((n2-n1)//2)+n1
    count = count +1
    gameh()
  elseif mmi == 0 then
    print ("O computador acertou em: ",count," tentativas")
    start()
  else
    print ("Erro")
    gameh()
  end
end

function computer ()
  math.randomseed(os.time())
  randnum = math.random(1,1024)
  count = 1
  gamec()
end

function gamec ()
  print ("Escreva um nº:")
  input = io.read("*n")
  if count >= 20 then
    print ("Acabou as chances!")
    start()
  elseif input == randnum then
    print ("0")
    print("Nº de tentativas:",count)
    start()
  elseif input < randnum then
    print ("1")
    count = count + 1
    gamec()
  elseif input > randnum then
    print ("-1")
    count = count + 1
    gamec()
  end
end


function start ()
  print ("humano (0) ou computador (1)")
  inp = io.read("*n")
  if inp == 1 then
    human()
  elseif inp == 0 then
    computer()
  else
    print ("Erro, por favor escreva '0' ou '1'")
    start()
  end
end

start()