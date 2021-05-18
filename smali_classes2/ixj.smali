.class Lixj;
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
    .line 219
    iput-object p1, p0, Lixj;->a:Lixi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->d()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 223
    return-void
.end method
