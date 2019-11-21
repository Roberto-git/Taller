
        <!-- =============================================== -->

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                Registrar Usuarios
                <small>Nuevo</small>
                </h1>
            </section>
            <!-- Main content -->
            <section class="content">
                <!-- Default box -->
                <div class="box box-solid">
                    <div class="box-body">

                    <!-- /.box-body -->
                    <hr>
                    <div class="row">
                        <div class="col-md-12">
                            <form action="<?php echo base_url();?>Mantenimiento/RegistroUser/agregar" method="post">
                                <div class="form-group">
                                    <label for="id_user">Matricula</label>
                                    <input type="text"  class="form-control" id="matricu" name="matricula">
                                </div>
                                <div class="form-group">
                                    <label for="nombre_u">Nombre</label>
                                    <input type="text"  class="form-control" id="nomb" name="nombre">
                                </div>
                                <div class="form-group">
                                    <label for="apellido_pu">Apellido Paterno</label>
                                    <input type="text"  class="form-control" id="apellido_p" name="apellido_paterno">
                                </div>
                                <div class="form-group">
                                    <label for="apellido_mu">Apellido Materno</label>
                                    <input type="text"  class="form-control" id="apellido_m" name="apellido_materno">
                                </div>
                                <div class="form-group">
                                    <label for="username">Username</label>
                                    <input type="text"  class="form-control" id="nombre" name="username">
                                </div>
                                <div class="form-group">
                                    <label for="contrasena">Contraseña</label>
                                    <input type="text"  class="form-control" id="contra" name="contrasena">
                                </div>
                                <div class="form-group">
                                    <label for="apellido_mu">Tipo</label>
                                    <input type="text"  class="form-control" name="nombre" name="tipo">
                                </div>
                                <div class="form-group">
                                <button type="submit" class="btn btn-success btn-flat">Guardar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /.box -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
