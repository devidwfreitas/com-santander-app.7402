.class Lmag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmaf;


# direct methods
.method constructor <init>(Lmaf;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lmag;->a:Lmaf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lmag;->a:Lmaf;

    invoke-static {v0}, Lmaf;->a(Lmaf;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->c(Z)V

    .line 261
    return-void
.end method
