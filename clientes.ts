export class cliente {
    idCliente!: number;
    identificacion!: number;
    nombres!: string;
    apellidos!: string;
    ciudad!: string;
    dirección!: string;
    correo!: string;
    celular!: number;
}

export const clientes: cliente[] = [
    {
        idCliente: 50,
        identificacion: 54031254,
        nombres: 'Sandra  Liliana',
        apellidos: 'Gomez',
        ciudad: 'Bogotá',
        dirección:'Av 13 # 12-60',
        correo: 'sangomez@gmail.com',
        celular: 3205487623,  
    },
    {
        idCliente: 51,
        identificacion: 72456890,
        nombres: 'Juan David ',
        apellidos: 'Perez Olarte',
        ciudad: 'Medellín',
        dirección:'Cll 52 sur # 20-35',
        correo: 'juanpolarte@gmail.com',
        celular: 3102036879,  
    },
    {
        idCliente: 52,
        identificacion: 1013548792,
        nombres: 'Karol Viviana',
        apellidos: 'Hernandez Bautista',
        ciudad: 'Bucaramanga',
        dirección:'Cra 30 # 12-17',
        correo: 'karolbautista@gmail.com',
        celular: 3002105478,  
    },
    {
        idCliente: 53,
        identificacion: 52148703,
        nombres: 'Martha',
        apellidos: 'Avila Correa',
        ciudad: 'Cali',
        dirección:'Cll 10 # 60-30',
        correo: 'macorrea@gmail.com',
        celular: 3225470100,  
    },
    {
        idCliente: 54,
        identificacion: 76456870,
        nombres: 'Ramiro Jose',
        apellidos: 'Martinez Cuesta',
        ciudad: 'Bogotá',
        dirección:'Cra 16 sur # 53-20',
        correo: 'ramirojcuesta@gmail.com',
        celular: 3137503215,  
    },
    
    
]