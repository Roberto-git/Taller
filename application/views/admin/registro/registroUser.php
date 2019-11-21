
        <!-- =============================================== -->

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                Registrar Usuarios
                <small>Dar de alta</small>
                </h1>
            </section>
            <!-- Main content -->
            <section class="content">
                <!-- Default box -->
                <div class="box box-solid">
                    <div class="box-body">
					<div class="col-md-12"></div>
					<a href="<?php echo base_url();?>Mantenimiento/RegistroUser/add" class="btn btn-primary btn-flat"><span class="fa fa-plus"></span>Agregar nuevo usuario</a>
                    </div>
                    <!-- /.box-body -->
                    <hr>
                    <div class="row">
                    	<div class="col-md-12">
                    		<table class="table table-bordered btn-hover">
                    			<thead>
                    				<tr>
                    					<th>Matricula</th>
                    					<th>Nombre</th>
                    					<th>Apellido paterno</th>
                    					<th>Apellido materno</th>
                    					<th>Nombre de usuario</th>
                    					<th>Tipo usuario</th>
                    				</tr>
                    			</thead>
                    			<tbody>
                    				<?php if(!empty($usuarios)): ?>
                    					<?php foreach ($usuarios as $altauser ): ?>
                    					<tr>
                    						<td><?php echo $altauser->id_user; ?></td>
                    						<td><?php echo $altauser->nombre_u; ?></td>
                    						<td><?php echo $altauser->apellido_pu; ?></td>
                    						<td><?php echo $altauser->apellido_mu; ?></td>
                    						<td><?php echo $altauser->username; ?></td>
                    						<td><?php echo $altauser->tipo;?></td>
                    						<td>
                    						<div class="btn-group">
                    							<a href="" class="btn btn-info"><span class="fa fa-eye"></span></a>
                    							<a href="" class="btn btn-warning"><span class="fa fa-pencil"></span></a>
                    							<a href="" class="btn btn-danger"><span class="fa fa-remove"></span></a>
                    						</div>
                    					</td>

                    			<?php endforeach;?>
                    		<?php endif; ?>
                    				</tr>
                    			</tbody>
                    		</table>
                    	</div>
                    </div>
                </div>
                <!-- /.box -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
