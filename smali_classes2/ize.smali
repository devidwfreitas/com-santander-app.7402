.class public Lize;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lize;->b:Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;

    iput-object p2, p0, Lize;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 154
    const-string v0, "idsHab_MsgS1"

    .line 156
    sget-object v0, Lguq;->HABILITACAO_ID:Lguq;

    sput-object v0, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->a:Lguq;

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 159
    iget-object v0, p0, Lize;->a:Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lize;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 167
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lize;->b:Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->b(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lize;->b:Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;->b(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;)V

    goto :goto_0
.end method
