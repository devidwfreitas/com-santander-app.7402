.class public Lixi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lixi;->a:Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 219
    new-instance v0, Lixj;

    invoke-direct {v0, p0}, Lixj;-><init>(Lixi;)V

    .line 226
    new-instance v1, Lixk;

    invoke-direct {v1, p0}, Lixk;-><init>(Lixi;)V

    .line 234
    invoke-static {}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->e()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->d()Landroid/app/Dialog;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lmyl;->a(Landroid/app/Activity;Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->a(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 235
    return-void
.end method
