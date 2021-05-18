.class public Lfmb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/RendaFixaAplicacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lfmb;->b:Lcom/santander/app/RendaFixaAplicacaoActivity;

    iput-object p2, p0, Lfmb;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lfmb;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 643
    return-void
.end method
