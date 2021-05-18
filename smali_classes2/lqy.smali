.class public Llqy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Llqy;->a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Llqy;->a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->a()Laor;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    if-eq v0, v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-static {}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-static {}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->d()Lmio;

    move-result-object v0

    invoke-virtual {v0}, Lmio;->j()V

    .line 118
    :goto_1
    iget-object v0, p0, Llqy;->a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)Lmin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Llqy;->a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)Lmin;

    move-result-object v0

    invoke-interface {v0}, Lmin;->a()V

    goto :goto_0

    .line 115
    :cond_2
    invoke-static {}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->d()Lmio;

    move-result-object v0

    invoke-virtual {v0}, Lmio;->k()V

    goto :goto_1
.end method
