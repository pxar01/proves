mutable struct EAXON
    id
    group
    message
    EAXON(x,y) = new(x,y,"ACK")
end

#Create an empty array of EAXON struct
eaxons = []

function main_function()
    #println("hello")
    opc = -1
    while opc!=5
        while (opc<1||opc>5)
            println("\n**********************************************************")
            println("\nSimulador per a microcontroladors injectables\n")
            println("**********************************************************\n")
            print("\n1 - Definir número d'eAXONs\n2 - Definir grup d'un eAXON\n3 - Comunicar-se amb un eAXON\n4 - Simular delay d'n transmissions\n5 - Sortir\nTria una opció: ")
            opc = parse(Int,readline())
            if (opc == 1)
                neaxon = num_eaxons()
                println("\nHas creat ",neaxon," eaxons\n") #prova de debug
                eaxons_array = create_eaxons(neaxon)
                println("\nS'han creat els següents eAXONs: ",eaxons_array)
                return main_function()
            elseif (opc == 2)
                print("A quin eAXON vols assignarli el grup? ")
                ideaxon = parse(Int, readline())
                idgrou = assign_group(ideaxon)
                return main_function()
            elseif (opc == 5)
                #println("\n")
            else
                opc = -1
            end
        end
    end
end

#Creo el número d'eAXONs necessaris
function num_eaxons()
    print("Quants eAXONs vols crear ")
    #la funció readline() retorna un String, per tant cal parsejar-lo com a Int
    neaxon = parse(Int,readline())
    return neaxon
end

#Assigno ID a cada un dels eAXONs
function create_eaxons(neaxon)
    for x in 1:neaxon
        push!(eaxons,EAXON(x,0))
    end
    return eaxons
end

function assign_group(ideaxon)
    print("A quin grup el vols assignar? ")
    idgroup = parse(Int,readline())
    #println(eaxons[ideaxon].id)
    for x in 1:ideaxon
        if x == ideaxon
            #push!(eaxons,EAXON(ideaxon,idgroup))
            eaxons[ideaxon].group = idgroup
        end
    end
    println("ara hi ha els següents eaxons",eaxons)
    #println("\nse li ha assignat el següent grup: ", eaxons[ideaxon].group)
end
