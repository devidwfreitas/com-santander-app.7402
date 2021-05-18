.class public Lcom/santander/app/meuperfil/activity/PrimeiroAcessoTermos;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/app/AlertDialog;

.field private d:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 34
    const-string v0, "PrimeiroAcessoTermos"

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoTermos;->a:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoTermos;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 89
    new-array v0, v2, [Ljava/lang/String;

    .line 91
    :try_start_0
    const-string v1, ""

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    array-length v4, v0

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 98
    const-string v5, "termos.pdf"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 97
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 93
    :catch_0
    move-exception v1

    .line 94
    const-string v4, "tag"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_0
    :try_start_1
    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 106
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/SantanderBrasil"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, v5, v6}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoTermos;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 110
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 113
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 114
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 117
    :catch_1
    move-exception v1

    .line 118
    const-string v5, "tag"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 121
    :cond_1
    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 124
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 126
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 127
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public aoSelecionarEnviar(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoTermos;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 66
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 67
    const v1, 0x7f04018b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 69
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoTermos;->d:Landroid/app/AlertDialog;

    .line 73
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoTermos;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 74
    return-void
.end method

.method public aoSelecionarEnviarPorEmail(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 59
    const-string v0, "termos"

    const-string v1, "termos.pdf"

    invoke-static {p0, v0, v1}, Lmyj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public aoSelecionarVoltarParaBoasVindas(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoTermos;->finish()V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f04034d

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoTermos;->setContentView(I)V

    .line 44
    const v0, 0x7f1010a3

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoTermos;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoTermos;->b:Landroid/webkit/WebView;

    .line 45
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoTermos;->b:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/termos.htm"

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOWebView;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoTermos;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoTermos;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02061f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 50
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 53
    const v0, 0x7f1004c6

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoTermos;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 55
    invoke-direct {p0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoTermos;->a()V

    .line 56
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 83
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/SantanderBrasil"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/termos.pdf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 85
    return-void
.end method
