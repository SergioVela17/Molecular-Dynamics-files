### Códigos para el análisis de datos de simulación de dinámica molecular
### Autor: Sergio Vela Moreno
## Máster en bioinformática - Universidad de Murcia

#En este script se muestran los códigos empleados para la generación de todas las
#gráficas empleadas en el report de la simulación de dinámica molecular con el 
#tripéptido ARH.

#Es necesario tener instalada y cargada la librería ggplot2, ya que será el paquete
#usado para llevar a cabo la representación:
installed.packages("ggplot2")
library(ggplot2)

###Códigos para la generación de las gráficas del reporte básico: 

##Radio de giro:
str(gyrate)

ggplot()+
  geom_line(data=gyrate, aes(x=V1,y=V5), color="298K")+
  geom_line(data=gyrate400K, aes(x=V1,y=V5), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Radio de giro (nm)")+
  ggtitle("Radio de giro frente al tiempo")

##Análisis de las Distancias de enlace:
#1)Distancia de enlace carbonilo:
str(dist1)

#1.1)Distancia de enlace carbonilo, representación conjunta:
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


#2)Distancia de enlace entre el carbono alfa y el hidrógeno alfa:

#2.1)Distancia de enlace entre el carbono alfa y el hidrógeno alfa, representación conjunta:
ggplot()+
  geom_line(data=dist2, aes(x=V1,y=V2), color="298K")+
  geom_line(data=dist2_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Distancia de enlace (nm)")+
  ggtitle("Distancia de enlace para el enlace carbono alfa-hidrógeno alfa")

mean(dist2$V2) #Valor medio de la distancia del segundo enlace a 298K
mean(dist2_400K$V2) #Valor medio de la distancia del segundo enlace a 400K

#2.2)Distancia de enlace entre el carbono alfa y el hidrógeno alfa a 298K:
ggplot()+
  geom_line(data=dist2, aes(x=V1,y=V2), color="298K")+
  xlab("Tiempo (ps)")+
  ylab("Distancia de enlace (nm)")+
  ggtitle("Distancia de enlace para el enlace carbono alfa-hidrógeno alfa")

#2.3)Distancia de enlace entre el carbono alfa y el hidrógeno alfa a 400K:
ggplot()+
  geom_line(data=dist2_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Distancia de enlace (nm)")+
  ggtitle("Distancia de enlace para el enlace carbono alfa-hidrógeno alfa")


##Análisis de los ángulos de enlace:

#1)Ángulo de enlace [CA-C-O-ala-2], representación conjunta:
ggplot()+
  geom_line(data=angaver1, aes(x=V1,y=V2), color="298K")+
  geom_line(data=angaver1_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Ángulo (grados (º))")+
  ggtitle("Ángulo de enlace para [CA-C-O-ala-2]")

mean(angaver1$V2) #Valor medio del ángulo del primer enlace a 298K
mean(angaver1_400K$V2) #Valor medio del ángulo del primer enlace a 400K

#2)Ángulo de enlace [CA-C-O-arg-3], representación conjunta:
ggplot()+
  geom_line(data=angaver2, aes(x=V1,y=V2), color="298K")+
  geom_line(data=angaver2_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Ángulo (grados (º))")+
  ggtitle("Ángulo de enlace para [CA-C-O-arg-3]")

mean(angaver2$V2) #Valor medio del ángulo del segundo enlace a 298K
mean(angaver2_400K$V2) #Valor medio del ángulo del segundo enlace a 400K

##Análisis de los ángulos diedros:

#1)Ángulo diedro Phi de ALA-2, representación conjunta:
ggplot()+
  geom_line(data=phi.ala.2, aes(x=V1,y=V2), color="298K")+
  geom_line(data=phi.ala.2_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (fs)")+
  ylab("Ángulo (grados (º))")+
  ggtitle("Ángulo diedro Phi para el residuo ALA-2")

#2)Ángulo diedro Psi de ALA-2, representación conjunta:
ggplot()+
  geom_line(data=psi.ala.2, aes(x=V1,y=V2), color="298K")+
  geom_line(data=psi.ala.2_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (fs)")+
  ylab("Ángulo (grados (º))")+
  ggtitle("Ángulo diedro Psi para el residuo ALA-2")

#3.1)Ángulo diedro Psi de ALA-2 frente al ángulo diedro Phi a 298K:
ggplot(data=ala.2,aes(x=V2,y=V3))+
  geom_point()+
  xlab("Ángulo Phi (grados (º))")+
  ylab("Ángulo Psi (grados (º))")+
  ggtitle("Ángulo Psi frente a ángulo Phi a 298K")

#3.2)Ángulo diedro Psi de ALA-2 frente al ángulo diedro Phi a 400K:
ggplot(data=ala.2_400K,aes(x=V2,y=V3))+
  geom_point()+
  xlab("Ángulo Phi (grados (º))")+
  ylab("Ángulo Psi (grados (º))")+
  ggtitle("Ángulo Psi frente a ángulo Phi a 400K")

##Evolución de la temperatura del sistema:

#1.1)Temperatura en la simulación a 298K:
ggplot()+
  geom_line(data=temp, aes(x=V1,y=V2), color="298K")+
  xlab("Tiempo (ps)")+
  ylab("Temperatura (K)")+
  ggtitle("Evolución de la temperatura para 298K")

#1.2)Temperatura en la simulación a 298K mediante histograma:
ggplot()+
  geom_histogram(data=temp, aes(x=V2, fill=factor(V2)))+
  theme (legend.position = "none") +
  xlab("Temperatura (K)")+
  ggtitle("Evolución de la temperatura para 298K")

#2.1)Temperatura en la simulación a 400K:
ggplot()+
  geom_line(data=temp_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Temperatura (K)")+
  ggtitle("Evolución de la temperatura para 400K")

#2.2)Temperatura en la simulación a 400K mediante histograma:
ggplot()+
  geom_histogram(data=temp_400K, aes(V2, fill=factor(V2)))+
  theme (legend.position = "none") +
  xlab("Temperatura (K)")+
  ggtitle("Evolución de la temperatura para 400K")

##Evolución de la energía del sistema:

#1)Energía cinética, representción conjunta:
ggplot()+
  geom_line(data=kineticenergy, aes(x=V1,y=V2), color="298K")+
  geom_line(data=kineticenergy_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Energía cinética (kJ/mol)")+
  ggtitle("Evolución de la energía cinética respecto al tiempo")

mean(kineticenergy$V2) #Valor medio de la energía cinética a 298K
mean(kineticenergy_400K$V2) #Valor medio de la energía cinética a 400K

#2)Energía total, representción conjunta:
ggplot()+
  geom_line(data=totalenergy, aes(x=V1,y=V2), color="298K")+
  geom_line(data=totalenergy_400K, aes(x=V1,y=V2), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Energía (kJ/mol)")+
  ggtitle("Evolución de la energía total respecto al tiempo")

mean(totalenergy$V2) #Valor medio de la energía total a 298K
mean(totalenergy_400K$V2) #Valor medio de la energía total a 400K

##Evolución de la velocidad del sistema:

str(veloc)

#1)Evolución de la velocidad del primer átomo, representación conjunta:
ggplot()+
  geom_line(data=veloc, aes(x=V1,y=V5), color="298K")+
  geom_line(data=veloc_400K, aes(x=V1,y=V5), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Velocidad (nm/ps)")+
  ggtitle("Evolución de la velocidad para el átomo 1")

mean(veloc$V5) #Valor medio de la velocidad del átomo 1 a 298K
mean(veloc_400K$V5) #Valor medio de la velocidad del átomo 1 a 400K

#2)Evolución de la velocidad del segundo átomo, representación conjunta:
ggplot()+
  geom_line(data=veloc, aes(x=V1,y=V9), color="298K")+
  geom_line(data=veloc_400K, aes(x=V1,y=V9), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Velocidad (nm/ps)")+
  ggtitle("Evolución de la velocidad para el átomo 2")

mean(veloc$V9) #Valor medio de la velocidad del átomo 2 a 298K
mean(veloc_400K$V9) #Valor medio de la velocidad del átomo 2 a 400K

#3)Evolución de la velocidad del tercer átomo, representación conjunta:
ggplot()+
  geom_line(data=veloc, aes(x=V1,y=V13), color="298K")+
  geom_line(data=veloc_400K, aes(x=V1,y=V13), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Velocidad (nm/ps)")+
  ggtitle("Evolución de la velocidad para el átomo 3")

mean(veloc$V13) #Valor medio de la velocidad del átomo 3 a 298K
mean(veloc_400K$V13) #Valor medio de la velocidad del átomo 3 a 400K

#4)Evolución de la velocidad del cuarto átomo, representación conjunta:
ggplot()+
  geom_line(data=veloc, aes(x=V1,y=V17), color="298K")+
  geom_line(data=veloc_400K, aes(x=V1,y=V17), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Velocidad (nm/ps)")+
  ggtitle("Evolución de la velocidad para el átomo 4")

mean(veloc$V17) #Valor medio de la velocidad del átomo 4 a 298K
mean(veloc_400K$V17) #Valor medio de la velocidad del átomo 4 a 400K

#5)Evolución de la velocidad del quinto átomo, representación conjunta:
ggplot()+
  geom_line(data=veloc, aes(x=V1,y=V21), color="298K")+
  geom_line(data=veloc_400K, aes(x=V1,y=V21), color="400K")+
  xlab("Tiempo (ps)")+
  ylab("Velocidad (nm/ps)")+
  ggtitle("Evolución de la velocidad para el átomo 5")

mean(veloc$V21) #Valor medio de la velocidad del átomo 5 a 298K
mean(veloc_400K$V21) #Valor medio de la velocidad del átomo 5 a 400K


###Códigos para la generación de las gráficas del reporte básico:

##Evolución de la temperatura del sistema:

#1)Temperatura en la simulación a 298K mediante histograma:
ggplot()+
  geom_histogram(data=tempextended, aes(x=V2, fill=factor(V2)))+
  theme (legend.position = "none") +
  xlab("Temperatura (K)")+
  ggtitle("Evolución de la temperatura para 298K")
  
##Evolución de las componentes de la velocidad para el carbono alfa del residuo ALA-2:

#Códigos con la librería ggplot2:

#1.1)Componente en X en la simulación a 298K mediante histograma:
ggplot()+
  geom_histogram(data=velocextended, aes(x=V34, fill=factor(V34)))+
  theme (legend.position = "none") +
  xlab("Velocidad (nm/ps)")+
  ggtitle("Evolución de la componente en X de la velocidad")

#1.2)Componente en y en la simulación a 298K mediante histograma:
ggplot()+
  geom_histogram(data=velocextended, aes(x=V35, fill=factor(V35)))+
  theme (legend.position = "none") +
  xlab("Velocidad (nm/ps)")+
  ggtitle("Evolución de la componente en Y de la velocidad")

#1.3)Componente en z en la simulación a 298K mediante histograma:
ggplot()+
  geom_histogram(data=velocextended, aes(x=V36, fill=factor(V36)))+
  theme (legend.position = "none") +
  xlab("Velocidad (nm/ps)")+
  ggtitle("Evolución de la componente en Z de la velocidad")

#Códigos con la función hist incluida por defecto:

#2.1)Componente en X en la simulación a 298K mediante histograma:
hist(velocextended$V34,
     col="green",
     main="Evolución de la componente en X de la velocidad",
     xlab="Velocidad (nm/ps)")

#2.2)Componente en y en la simulación a 298K mediante histograma:
hist(velocextended$V35,
     col="green",
     main="Evolución de la componente en Y de la velocidad",
     xlab="Velocidad (nm/ps)")

#2.3)Componente en z en la simulación a 298K mediante histograma:
hist(velocextended$V36,
     col="green",
     main="Evolución de la componente en Z de la velocidad",
     xlab="Velocidad (nm/ps)")

##Diagramas de Ramachandran:

#1)Diagrama de Ramachandran para el residuo ALA-2:
ggplot(data=ala.2,aes(x=V2,y=V3))+
  geom_point(aes(colour="red"))+
  geom_hline(aes(yintercept=0))+
  geom_vline(aes(xintercept=0))+
  xlab("Ángulo Phi (grados (º))")+
  ylab("Ángulo Psi (grados (º))")+
  ggtitle("Diagrama de Ramachandran para ALA-2")+
  theme(legend.position = "none")

#2)Diagrama de Ramachandran para el residuo ARG-3:
ggplot(data=arg.3,aes(x=V2,y=V3))+
  geom_point(aes(colour="red"))+
  geom_hline(aes(yintercept=0))+
  geom_vline(aes(xintercept=0))+
  xlab("Ángulo Phi (grados (º))")+
  ylab("Ángulo Psi (grados (º))")+
  ggtitle("Diagrama de Ramachandran para ARG-3")+
  theme(legend.position = "none")

#3)Diagrama de Ramachandran para el residuo HIS-4:
ggplot(data=his.4,aes(x=V2,y=V3))+
  geom_point(aes(colour="red"))+
  geom_hline(aes(yintercept=0))+
  geom_vline(aes(xintercept=0))+
  xlab("Ángulo Phi (grados (º))")+
  ylab("Ángulo Psi (grados (º))")+
  ggtitle("Diagrama de Ramachandran para HIS-4")+
  theme(legend.position = "none")