.class public Lgcp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lgcp;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 104
    iget-object v0, p0, Lgcp;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 107
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
