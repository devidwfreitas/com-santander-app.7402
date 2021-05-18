.class public Lkmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lkmp;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 135
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lkmp;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lkmp;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->a(Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;)Lkne;

    move-result-object v0

    invoke-interface {v0}, Lkne;->b()V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lkmp;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->a(Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;)Lkne;

    move-result-object v0

    invoke-interface {v0}, Lkne;->b()V

    goto :goto_0
.end method
