.class Lmuw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmuu;


# direct methods
.method constructor <init>(Lmuu;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lmuw;->a:Lmuu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmuw;->a:Lmuu;

    invoke-static {v0}, Lmuu;->b(Lmuu;)V

    .line 112
    return-void
.end method
