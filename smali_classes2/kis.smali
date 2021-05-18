.class Lkis;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkip;


# direct methods
.method constructor <init>(Lkip;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lkis;->a:Lkip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 207
    const-string v0, "Outros_RecargaDeTelefone_Recarga_Acao"

    const-string v1, "SelecionarContato"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 210
    iget-object v0, p0, Lkis;->a:Lkip;

    invoke-static {v0}, Lkip;->a(Lkip;)Lkio;

    move-result-object v0

    invoke-interface {v0}, Lkio;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lkis;->a:Lkip;

    invoke-static {v0}, Lkip;->a(Lkip;)Lkio;

    move-result-object v0

    invoke-interface {v0}, Lkio;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 226
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lkis;->a:Lkip;

    invoke-static {v0}, Lkip;->a(Lkip;)Lkio;

    move-result-object v0

    invoke-interface {v0}, Lkio;->b()V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lkis;->a:Lkip;

    invoke-static {v0}, Lkip;->a(Lkip;)Lkio;

    move-result-object v0

    invoke-interface {v0}, Lkio;->b()V

    goto :goto_0
.end method
