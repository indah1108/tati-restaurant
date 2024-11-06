<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
<div class="container">
    <div class="row justify-content-center align-items-center">
        <div class=col-6>
            <form method= "post" enctype= "multipart/form-data">
                <div>
                <label class=form-label>KATEGORI</label>
                <select class="form-select" name="kategori">
                <option value="1">Makanan</option>
                <option value="2">Minuman</option>
                <select>
                </div>

                <div>
                    <label class="form-label">NAMA PRODUK</label>
                    <input class="form-control" type="text" name="nama_produk"></input>
                </div>

                <div>
                    <label class="form-label">HARGA PRODUK</label>
                    <input class="form-control" type="number" name="harga_produk"></input>
                </div>

                <div>
                    <label class="form-label">DESKRIPSI</label>
                    <input class="form-control" type="text" name="deskripsi"></input>
                </div>

                <div>
                    <label class="form-label">GAMBAR</label>
                    <input class="form-control" type="file" name="gambar"></input>
                </div>
                <div>
                    <button type="submit" name="submit" class="btn">SUBMIT</button>
                </div>
            </form>

            <?php
            if (isset($_POST['submit'])){
                $id_kategori=$_POST['kategori'];
                $name=$_POST['nama_produk'];
                $harga=$_POST['harga_produk'];
                $deskripsi=$_POST['deskripsi'];

                $gambarproduk=$_FILES['gambar']["name"];
                $tempname=$_FILES["gambar"]["tmp_name"];
                $folder="../img/".$gambarproduk;
                if(move_uploaded_file ($tempname,$folder))
                echo'<img src="'.$folder.'">';
            }
            ?>
         </div>
    </div>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>