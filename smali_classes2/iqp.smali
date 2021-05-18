.class public Liqp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Landroid/widget/RelativeLayout;

.field final synthetic c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;Landroid/os/Handler;Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 889
    iput-object p1, p0, Liqp;->c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    iput-object p2, p0, Liqp;->a:Landroid/os/Handler;

    iput-object p3, p0, Liqp;->b:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Liqp;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 893
    iget-object v0, p0, Liqp;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 894
    return-void
.end method
