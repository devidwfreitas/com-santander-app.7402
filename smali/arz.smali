.class Larz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Larj;

.field final synthetic b:Lary;


# direct methods
.method constructor <init>(Lary;Larj;)V
    .locals 0

    .prologue
    .line 1445
    iput-object p1, p0, Larz;->b:Lary;

    iput-object p2, p0, Larz;->a:Larj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1447
    iget-object v0, p0, Larz;->b:Lary;

    iget-object v1, p0, Larz;->a:Larj;

    invoke-static {v0, v1}, Lary;->a(Lary;Larj;)V

    .line 1448
    return-void
.end method
