.class public Ldky;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Ldkw;

.field private final b:I

.field private final c:Z

.field private final d:Z


# direct methods
.method constructor <init>(Ldkw;IZZ)V
    .locals 0

    iput-object p1, p0, Ldky;->a:Ldkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ldky;->b:I

    iput-boolean p3, p0, Ldky;->c:Z

    iput-boolean p4, p0, Ldky;->d:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Ldky;->a:Ldkw;

    iget v1, p0, Ldky;->b:I

    iget-boolean v2, p0, Ldky;->c:Z

    iget-boolean v3, p0, Ldky;->d:Z

    move-object v4, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Ldkw;->a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    const/4 v6, 0x0

    iget-object v0, p0, Ldky;->a:Ldkw;

    iget v1, p0, Ldky;->b:I

    iget-boolean v2, p0, Ldky;->c:Z

    iget-boolean v3, p0, Ldky;->d:Z

    move-object v4, p1

    move-object v5, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Ldkw;->a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Ldky;->a:Ldkw;

    iget v1, p0, Ldky;->b:I

    iget-boolean v2, p0, Ldky;->c:Z

    iget-boolean v3, p0, Ldky;->d:Z

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Ldkw;->a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Ldky;->a:Ldkw;

    iget v1, p0, Ldky;->b:I

    iget-boolean v2, p0, Ldky;->c:Z

    iget-boolean v3, p0, Ldky;->d:Z

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Ldkw;->a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
