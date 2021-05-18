.class public Liqj;
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
    .line 708
    iput-object p1, p0, Liqj;->b:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    iput-object p2, p0, Liqj;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Liqj;->b:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-virtual {v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->b()V

    .line 712
    iget-object v0, p0, Liqj;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 713
    return-void
.end method
