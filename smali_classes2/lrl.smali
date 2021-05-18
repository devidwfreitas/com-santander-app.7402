.class Llrl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lkvb;

.field final synthetic b:Llrk;


# direct methods
.method constructor <init>(Llrk;Lkvb;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Llrl;->b:Llrk;

    iput-object p2, p0, Llrl;->a:Lkvb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 832
    iget-object v0, p0, Llrl;->b:Llrk;

    iget-object v0, v0, Llrk;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iget-object v1, p0, Llrl;->a:Lkvb;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkvb;)V

    .line 833
    return-void
.end method
