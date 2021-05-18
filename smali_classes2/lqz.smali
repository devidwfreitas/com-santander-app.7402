.class public Llqz;
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
    .line 124
    iput-object p1, p0, Llqz;->a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Llqz;->a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->a()Laor;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    if-eq v0, v1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->a(Z)Z

    .line 129
    iget-object v0, p0, Llqz;->a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->b()V

    goto :goto_0

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
