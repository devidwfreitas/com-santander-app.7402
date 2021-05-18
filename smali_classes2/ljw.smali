.class Lljw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lljv;


# direct methods
.method constructor <init>(Lljv;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lljw;->a:Lljv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lljw;->a:Lljv;

    iget-object v0, v0, Lljv;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->finish()V

    .line 244
    return-void
.end method
