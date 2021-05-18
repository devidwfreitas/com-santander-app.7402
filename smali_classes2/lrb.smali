.class public Llrb;
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
    .line 141
    iput-object p1, p0, Llrb;->a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Llrb;->a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->a()Laor;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    if-eq v0, v1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Llrb;->a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->d(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)V

    goto :goto_0
.end method
