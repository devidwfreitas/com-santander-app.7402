.class public Llsi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxa;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Llsi;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 310
    const-string v0, "AudioService"

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 305
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v0

    const-string v1, "audio-base64-key"

    invoke-virtual {v0, v1}, Lmhg;->c(Ljava/lang/String;)V

    .line 306
    return-void
.end method
