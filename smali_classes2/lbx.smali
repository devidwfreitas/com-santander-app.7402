.class Llbx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llbo;


# instance fields
.field final synthetic a:Llbq;


# direct methods
.method constructor <init>(Llbq;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Llbx;->a:Llbq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Llbx;->a:Llbq;

    invoke-static {v0}, Llbq;->d(Llbq;)Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;->finish()V

    .line 250
    return-void
.end method
