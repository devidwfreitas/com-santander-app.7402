.class public Liqi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Liqi;->b:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    iput-object p2, p0, Liqi;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Liqi;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 704
    iget-object v0, p0, Liqi;->b:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-static {v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->d(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lfsr;

    move-result-object v0

    invoke-interface {v0}, Lfsr;->c()V

    .line 705
    return-void
.end method
