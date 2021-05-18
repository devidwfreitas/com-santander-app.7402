.class public Liqn;
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
    .line 318
    iput-object p1, p0, Liqn;->b:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    iput-object p2, p0, Liqn;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Liqn;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 322
    return-void
.end method
