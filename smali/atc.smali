.class Latc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Latb;


# direct methods
.method constructor <init>(Latb;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Latc;->a:Latb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 305
    const-string v0, "Chat Santander"

    const-string v1, "A mensagem n\u00e3o p\u00f4de ser enviada."

    iget-object v2, p0, Latc;->a:Latb;

    .line 306
    invoke-static {v2}, Latb;->a(Latb;)Landroid/content/Context;

    move-result-object v2

    .line 305
    invoke-static {v0, v1, v2}, Lase;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 307
    return-void
.end method
