.class Lfde;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfda;


# direct methods
.method constructor <init>(Lfda;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lfde;->a:Lfda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lfda;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Finishing due to inactivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lfde;->a:Lfda;

    invoke-static {v0}, Lfda;->d(Lfda;)V

    .line 126
    return-void
.end method
