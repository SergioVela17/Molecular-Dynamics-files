### C�digos para el an�lisis de datos de simulaci�n de din�mica molecular
### Autor: Sergio Vela Moreno
## M�ster en bioinform�tica - Universidad de Murcia

#En este script se muestran los c�digos empleados para la generaci�n de todas las
#gr�ficas empleadas en el report de la simulaci�n de din�mica molecular con el 
#trip�ptido ARH.

#Es necesario tener instalada y cargada la librer�a ggplot2, ya que ser� el paquete
#usado para llevar a cabo la representaci�n:
installed.packages("ggplot2")
library(ggplot2)

###C�digos para la generaci�n de las gr�ficas del reporte b�sico: 

##Radio de giro:
str(gyrate)

ggplot()+
  geom_line(data=gyrate, aes(x=V1,y=V5), color="298K")+
  geom_line(data=gyrate400K, aes(x=V1,y=V5), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Radio de giro (nm)")+
  ggtitle("Radio de giro frente al tiempo")

##An�lisis de las Distancias de enlace:
#1)Distancia de enlace carbonilo:
str(dist1)

#1.1)Distancia de enlace carbonilo, representaci�n conjunta:
ggplot()+
  geom_line(data=dist1, aes(x=V1,y=V2), color="298K")+
  geom_line(data=dist1_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Distancia de enlace (nm)")+
  ggtitle("Distancia de enlace para el enlace carbonilo")

mean(dist1$V2) #Valor medio de la distancia del primer enlace a 298K
mean(dist1_400K$V2) #Valor medio de la distancia del primer enlace a 400K

#1.2)Distancia de enlace carbonilo a 298K:
ggplot()+
  geom_line(data=dist1, aes(x=V1,y=V2), color="298K")+
  xlab("Tiempo (ps)")+
  ylab("Distancia de enlace (nm)")+
  ggtitle("Distancia de enlace para el enlace carbonilo")

#1.3)Distancia de enlace carbonilo a 400K:
ggplot()+
  geom_line(data=dist1_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Distancia de enlace (nm)")+
  ggtitle("Distancia de enlace para el enlace carbonilo")


#2)Distancia de enlace entre el carbono alfa y el hidr�geno alfa:

#2.1)Distancia de enlace entre el carbono alfa y el hidr�geno alfa, representaci�n conjunta:
ggplot()+
  geom_line(data=dist2, aes(x=V1,y=V2), color="298K")+
  geom_line(data=dist2_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Distancia de enlace (nm)")+
  ggtitle("Distancia de enlace para el enlace carbono alfa-hidr�geno alfa")

mean(dist2$V2) #Valor medio de la distancia del segundo enlace a 298K
mean(dist2_400K$V2) #Valor medio de la distancia del segundo enlace a 400K

#2.2)Distancia de enlace entre el carbono alfa y el hidr�geno alfa a 298K:
ggplot()+
  geom_line(data=dist2, aes(x=V1,y=V2), color="298K")+
  xlab("Tiempo (ps)")+
  ylab("Distancia de enlace (nm)")+
  ggtitle("Distancia de enlace para el enlace carbono alfa-hidr�geno alfa")

#2.3)Distancia de enlace entre el carbono alfa y el hidr�geno alfa a 400K:
ggplot()+
  geom_line(data=dist2_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Distancia de enlace (nm)")+
  ggtitle("Distancia de enlace para el enlace carbono alfa-hidr�geno alfa")


##An�lisis de los �ngulos de enlace:

#1)�ngulo de enlace [CA-C-O-ala-2], representaci�n conjunta:
ggplot()+
  geom_line(data=angaver1, aes(x=V1,y=V2), color="298K")+
  geom_line(data=angaver1_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("�ngulo (grados (�))")+
  ggtitle("�ngulo de enlace para [CA-C-O-ala-2]")

mean(angaver1$V2) #Valor medio del �ngulo del primer enlace a 298K
mean(angaver1_400K$V2) #Valor medio del �ngulo del primer enlace a 400K

#2)�ngulo de enlace [CA-C-O-arg-3], representaci�n conjunta:
ggplot()+
  geom_line(data=angaver2, aes(x=V1,y=V2), color="298K")+
  geom_line(data=angaver2_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("�ngulo (grados (�))")+
  ggtitle("�ngulo de enlace para [CA-C-O-arg-3]")

mean(angaver2$V2) #Valor medio del �ngulo del segundo enlace a 298K
mean(angaver2_400K$V2) #Valor medio del �ngulo del segundo enlace a 400K

##An�lisis de los �ngulos diedros:

#1)�ngulo diedro Phi de ALA-2, representaci�n conjunta:
ggplot()+
  geom_line(data=phi.ala.2, aes(x=V1,y=V2), color="298K")+
  geom_line(data=phi.ala.2_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (fs)")+
  ylab("�ngulo (grados (�))")+
  ggtitle("�ngulo diedro Phi para el residuo ALA-2")

#2)�ngulo diedro Psi de ALA-2, representaci�n conjunta:
ggplot()+
  geom_line(data=psi.ala.2, aes(x=V1,y=V2), color="298K")+
  geom_line(data=psi.ala.2_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (fs)")+
  ylab("�ngulo (grados (�))")+
  ggtitle("�ngulo diedro Psi para el residuo ALA-2")

#3.1)�ngulo diedro Psi de ALA-2 frente al �ngulo diedro Phi a 298K:
ggplot(data=ala.2,aes(x=V2,y=V3))+
  geom_point()+
  xlab("�ngulo Phi (grados (�))")+
  ylab("�ngulo Psi (grados (�))")+
  ggtitle("�ngulo Psi frente a �ngulo Phi a 298K")

#3.2)�ngulo diedro Psi de ALA-2 frente al �ngulo diedro Phi a 400K:
ggplot(data=ala.2_400K,aes(x=V2,y=V3))+
  geom_point()+
  xlab("�ngulo Phi (grados (�))")+
  ylab("�ngulo Psi (grados (�))")+
  ggtitle("�ngulo Psi frente a �ngulo Phi a 400K")

##Evoluci�n de la temperatura del sistema:

#1.1)Temperatura en la simulaci�n a 298K:
ggplot()+
  geom_line(data=temp, aes(x=V1,y=V2), color="298K")+
  xlab("Tiempo (ps)")+
  ylab("Temperatura (K)")+
  ggtitle("Evoluci�n de la temperatura para 298K")

#1.2)Temperatura en la simulaci�n a 298K mediante histograma:
ggplot()+
  geom_histogram(data=temp, aes(x=V2, fill=factor(V2)))+
  theme (legend.position = "none") +
  xlab("Temperatura (K)")+
  ggtitle("Evoluci�n de la temperatura para 298K")

#2.1)Temperatura en la simulaci�n a 400K:
ggplot()+
  geom_line(data=temp_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Temperatura (K)")+
  ggtitle("Evoluci�n de la temperatura para 400K")

#2.2)Temperatura en la simulaci�n a 400K mediante histograma:
ggplot()+
  geom_histogram(data=temp_400K, aes(V2, fill=factor(V2)))+
  theme (legend.position = "none") +
  xlab("Temperatura (K)")+
  ggtitle("Evoluci�n de la temperatura para 400K")

##Evoluci�n de la energ�a del sistema:

#1)Energ�a cin�tica, representci�n conjunta:
ggplot()+
  geom_line(data=kineticenergy, aes(x=V1,y=V2), color="298K")+
  geom_line(data=kineticenergy_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Energ�a cin�tica (kJ/mol)")+
  ggtitle("Evoluci�n de la energ�a cin�tica respecto al tiempo")

mean(kineticenergy$V2) #Valor medio de la energ�a cin�tica a 298K
mean(kineticenergy_400K$V2) #Valor medio de la energ�a cin�tica a 400K

#2)Energ�a total, representci�n conjunta:
ggplot()+
  geom_line(data=totalenergy, aes(x=V1,y=V2), color="298K")+
  geom_line(data=totalenergy_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Energ�a (kJ/mol)")+
  ggtitle("Evoluci�n de la energ�a total respecto al tiempo")

mean(totalenergy$V2) #Valor medio de la energ�a total a 298K
mean(totalenergy_400K$V2) #Valor medio de la energ�a total a 400K

##Evoluci�n de la velocidad del sistema:

str(veloc)

#1)Evoluci�n de la velocidad del primer �tomo, representaci�n conjunta:
ggplot()+
  geom_line(data=veloc, aes(x=V1,y=V5), color="298K")+
  geom_line(data=veloc_400K, aes(x=V1,y=V5), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Velocidad (nm/ps)")+
  ggtitle("Evoluci�n de la velocidad para el �tomo 1")

mean(veloc$V5) #Valor medio de la velocidad del �tomo 1 a 298K
mean(veloc_400K$V5) #Valor medio de la velocidad del �tomo 1 a 400K

#2)Evoluci�n de la velocidad del segundo �tomo, representaci�n conjunta:
ggplot()+
  geom_line(data=veloc, aes(x=V1,y=V9), color="298K")+
  geom_line(data=veloc_400K, aes(x=V1,y=V9), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Velocidad (nm/ps)")+
  ggtitle("Evoluci�n de la velocidad para el �tomo 2")

mean(veloc$V9) #Valor medio de la velocidad del �tomo 2 a 298K
mean(veloc_400K$V9) #Valor medio de la velocidad del �tomo 2 a 400K

#3)Evoluci�n de la velocidad del tercer �tomo, representaci�n conjunta:
ggplot()+
  geom_line(data=veloc, aes(x=V1,y=V13), color="298K")+
  geom_line(data=veloc_400K, aes(x=V1,y=V13), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Velocidad (nm/ps)")+
  ggtitle("Evoluci�n de la velocidad para el �tomo 3")

mean(veloc$V13) #Valor medio de la velocidad del �tomo 3 a 298K
mean(veloc_400K$V13) #Valor medio de la velocidad del �tomo 3 a 400K

#4)Evoluci�n de la velocidad del cuarto �tomo, representaci�n conjunta:
ggplot()+
  geom_line(data=veloc, aes(x=V1,y=V17), color="298K")+
  geom_line(data=veloc_400K, aes(x=V1,y=V17), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Velocidad (nm/ps)")+
  ggtitle("Evoluci�n de la velocidad para el �tomo 4")

mean(veloc$V17) #Valor medio de la velocidad del �tomo 4 a 298K
mean(veloc_400K$V17) #Valor medio de la velocidad del �tomo 4 a 400K

#5)Evoluci�n de la velocidad del quinto �tomo, representaci�n conjunta:
ggplot()+
  geom_line(data=veloc, aes(x=V1,y=V21), color="298K")+
  geom_line(data=veloc_400K, aes(x=V1,y=V21), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Velocidad (nm/ps)")+
  ggtitle("Evoluci�n de la velocidad para el �tomo 5")

mean(veloc$V21) #Valor medio de la velocidad del �tomo 5 a 298K
mean(veloc_400K$V21) #Valor medio de la velocidad del �tomo 5 a 400K


###C�digos para la generaci�n de las gr�ficas del reporte b�sico:

##Evoluci�n de la temperatura del sistema:

#1)Temperatura en la simulaci�n a 298K mediante histograma:
ggplot()+
  geom_histogram(data=tempextended, aes(x=V2, fill=factor(V2)))+
  theme (legend.position = "none") +
  xlab("Temperatura (K)")+
  ggtitle("Evoluci�n de la temperatura para 298K")
  
##Evoluci�n de las componentes de la velocidad para el carbono alfa del residuo ALA-2:

#C�digos con la librer�a ggplot2:

#1.1)Componente en X en la simulaci�n a 298K mediante histograma:
ggplot()+
  geom_histogram(data=velocextended, aes(x=V34, fill=factor(V34)))+
  theme (legend.position = "none") +
  xlab("Velocidad (nm/ps)")+
  ggtitle("Evoluci�n de la componente en X de la velocidad")

#1.2)Componente en y en la simulaci�n a 298K mediante histograma:
ggplot()+
  geom_histogram(data=velocextended, aes(x=V35, fill=factor(V35)))+
  theme (legend.position = "none") +
  xlab("Velocidad (nm/ps)")+
  ggtitle("Evoluci�n de la componente en Y de la velocidad")

#1.3)Componente en z en la simulaci�n a 298K mediante histograma:
ggplot()+
  geom_histogram(data=velocextended, aes(x=V36, fill=factor(V36)))+
  theme (legend.position = "none") +
  xlab("Velocidad (nm/ps)")+
  ggtitle("Evoluci�n de la componente en Z de la velocidad")

#C�digos con la funci�n hist incluida por defecto:

#2.1)Componente en X en la simulaci�n a 298K mediante histograma:
hist(velocextended$V34,
     col="green",
     main="Evoluci�n de la componente en X de la velocidad",
     xlab="Velocidad (nm/ps)")

#2.2)Componente en y en la simulaci�n a 298K mediante histograma:
hist(velocextended$V35,
     col="green",
     main="Evoluci�n de la componente en Y de la velocidad",
     xlab="Velocidad (nm/ps)")

#2.3)Componente en z en la simulaci�n a 298K mediante histograma:
hist(velocextended$V36,
     col="green",
     main="Evoluci�n de la componente en Z de la velocidad",
     xlab="Velocidad (nm/ps)")

##Diagramas de Ramachandran:

#1)Diagrama de Ramachandran para el residuo ALA-2:
ggplot(data=ala.2,aes(x=V2,y=V3))+
  geom_point(aes(colour="red"))+
  geom_hline(aes(yintercept=0))+
  geom_vline(aes(xintercept=0))+
  xlab("�ngulo Phi (grados (�))")+
  ylab("�ngulo Psi (grados (�))")+
  ggtitle("Diagrama de Ramachandran para ALA-2")+
  theme(legend.position = "none")

#2)Diagrama de Ramachandran para el residuo ARG-3:
ggplot(data=arg.3,aes(x=V2,y=V3))+
  geom_point(aes(colour="red"))+
  geom_hline(aes(yintercept=0))+
  geom_vline(aes(xintercept=0))+
  xlab("�ngulo Phi (grados (�))")+
  ylab("�ngulo Psi (grados (�))")+
  ggtitle("Diagrama de Ramachandran para ARG-3")+
  theme(legend.position = "none")

#3)Diagrama de Ramachandran para el residuo HIS-4:
ggplot(data=his.4,aes(x=V2,y=V3))+
  geom_point(aes(colour="red"))+
  geom_hline(aes(yintercept=0))+
  geom_vline(aes(xintercept=0))+
  xlab("�ngulo Phi (grados (�))")+
  ylab("�ngulo Psi (grados (�))")+
  ggtitle("Diagrama de Ramachandran para HIS-4")+
  theme(legend.position = "none")