struct Servidor1
    id::Int64
    timer::Float64
    data::Any
end

struct Nodes
    id::Int64
    ack::Any
end

#Create server and node
#serv = Servidor1(1,5.0,"comença a enviar")
#node1 = Nodes(1,"ACK")

function create_server_node(num_nodes::Int64)
    array_nodes = fill("0",(1,num_nodes))
    for x in 1:num_nodes
        array_nodes[x] =
    end
    println(nodes[1])
end
create_server_node(2)


#=function server_send(server::Servidor1)
    println("\n+Server with ID: ",server.id,", sending to node with message: '", server.data,"'")
    response(node1,server.data)
    println("+",node1.ack,"\n")
end

function response(node::Nodes, mesage::Any)
    println("-Respon el node ", node.id, ". Ha rebut el missatge '", mesage,"' i respon amb ",node.ack)
    return node.ack
end

server_send(serv)=#

#=server=Servidor(0,5.0,"enviament")
println("El servidor farà pulling cada ", server.timer," s")
node1=Node(1)
node2=Node(2)
println("Node 1 amb ID: ", node1.id,", node 2 amb ID",node2.id)
=#
