.class Lixk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lixi;


# direct methods
.method constructor <init>(Lixi;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lixk;->a:Lixi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->d()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 230
    iget-object v0, p0, Lixk;->a:Lixi;

    iget-object v0, v0, Lixi;->a:Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->a(Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;)V

    .line 231
    return-void
.end method
