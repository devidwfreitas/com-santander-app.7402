.class public Llre;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Llre;->a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Llre;->a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Llre;->a:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;Z)V

    goto :goto_0
.end method
