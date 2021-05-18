.class Ldp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldu",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldn;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/Object;

.field private final synthetic d:Ljava/util/List;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ldm;


# direct methods
.method constructor <init>(Ldn;Landroid/content/Context;Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ldm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ldp;->a:Ldn;

    iput-object p2, p0, Ldp;->b:Landroid/content/Context;

    iput-object p3, p0, Ldp;->c:Ljava/lang/Object;

    iput-object p4, p0, Ldp;->d:Ljava/util/List;

    iput-object p5, p0, Ldp;->e:Ljava/lang/String;

    iput-object p6, p0, Ldp;->f:Ldm;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 76
    iget-object v0, p0, Ldp;->a:Ldn;

    iget-object v0, v0, Ldn;->a:Ljava/lang/Object;

    check-cast v0, Ldr;

    iget-object v1, p0, Ldp;->b:Landroid/content/Context;

    iget-object v2, p0, Ldp;->c:Ljava/lang/Object;

    iget-object v3, p0, Ldp;->d:Ljava/util/List;

    iget-object v4, p0, Ldp;->e:Ljava/lang/String;

    new-instance v5, Ldq;

    iget-object v6, p0, Ldp;->f:Ldm;

    invoke-direct {v5, p0, v6}, Ldq;-><init>(Ldp;Ldm;)V

    invoke-virtual/range {v0 .. v5}, Ldr;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ldt;)V

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method
