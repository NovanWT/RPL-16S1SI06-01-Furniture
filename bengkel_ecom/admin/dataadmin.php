
		<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
        	<?php
			if (@$_GET['act'] == '') { ?>
	            <div class="panel-heading">
	                <div class="row">
						<div class="col-lg-12">
							<div class="pull-left">
								Data Admin
							</div>
						</div>
	                </div>
	            </div>
	            <!-- /.panel-heading -->
	            <div class="panel-body">
	                <div class="table-responsive">
						<table class="table table-bordered table-hover table-striped" id="dataTables">
							<thead>
								<tr>
									<th>No.</th>
									<th>Id Admin</th>
									
			<th>User Name</th>
			<th>Password</th>
			<th>Nama</th>
			<th>Email</th>
									<th>Opsi</th>
								</tr>
							</thead>
							<tbody>
							<?php
							$no = 1;
							$sql_user = mysqli_query($con, "SELECT * FROM tbl_admin") or die($con->error);
							while ($data = mysqli_fetch_array($sql_user)) {?>
								<tr>
									<td align="center"><?=$no++;?>.</td>
									<td><?=ucwords($data['id_admin']);?></td>
									
									<td><?=$data['username'];?></td>
									<td><?=$data['password'];?></td>
									<td><?=$data['nama'];?></td>
									<td><?=$data['email'];?></td>
									
									<td align="center">
										<a href="<?=$base_url;?>/admin/?page=user&act=edit&id=<?=$data['id_user'];?>" class="btn btn-xs btn-info">Edit Email / Password</a>
									</td>
								</tr>
							<?php }?>
							</tbody>
						</table>
					</div>
	            </div>
	            <!-- /.panel-body -->
        	<?php
			} else if (@$_GET['act'] == 'edit') { ?>
				<div class="panel-heading">
	                <div class="row">
						<div class="col-lg-12">
							<div class="pull-left">
								Edit Data pelamnggan
							</div>
			                <div class="pull-right">
								<a href="<?=$base_url;?>/admin/?page=user" class="btn btn-xs btn-warning">Kembali</a>
			                </div>
						</div>
	                </div>
	            </div>
	            <!-- /.panel-heading -->
	            <div class="panel-body">
	            	<div class="row">
	            		<div class="col-lg-6">
	            			<?php
							$sql_user = mysqli_query($con, "SELECT * FROM tbl_member WHERE id_member = '$_GET[id]'") or die(mysqli_error());
						    $data = mysqli_fetch_array($sql_user);
						    ?>
	            			<form action="" method="post">
				                <div class="form-group">
									<label for="email">Email</label>
									<input type="text" class="form-control" id="email" name="email" placeholder="E-mail user" value="<?=$data['email_user']; ?>" required>
								</div>
								<div class="form-group">
									<label for="pass">Password</label>
									<input type="text" class="form-control" id="pass" name="pass" placeholder="Password user" value="<?=$data['password_user']; ?>" required>
								</div>
								<div class="form-group">
									<input type="submit" name="edit" class="btn btn-success" value="Edit">
								</div>
							</form>
							<?php
							if (@isset($_POST['edit'])) {
						        $email  = mysqli_real_escape_string($con, trim($_POST['email']));
						        $pass  = mysqli_real_escape_string($con, trim($_POST['pass']));
						        mysqli_query($con, "UPDATE tbl_member SET email = '$email', password_user = '$pass' WHERE id_member = '$_GET[id]'") or die(mysqli_error());
						        header("location: " . $base_url . "/admin/?page=user");
						    } ?>
						</div>
					</div>
	            </div>
	            <!-- /.panel-body -->
	        <?php
	        } ?>
        </div>