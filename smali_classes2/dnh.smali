.class Ldnh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Z

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ldmw;


# direct methods
.method constructor <init>(Ldmw;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldnh;->i:Ldmw;

    iput-object p2, p0, Ldnh;->a:Ljava/lang/String;

    iput-object p3, p0, Ldnh;->b:Ljava/lang/String;

    iput-wide p4, p0, Ldnh;->c:J

    iput-object p6, p0, Ldnh;->d:Landroid/os/Bundle;

    iput-boolean p7, p0, Ldnh;->e:Z

    iput-boolean p8, p0, Ldnh;->f:Z

    iput-boolean p9, p0, Ldnh;->g:Z

    iput-object p10, p0, Ldnh;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v1, p0, Ldnh;->i:Ldmw;

    iget-object v2, p0, Ldnh;->a:Ljava/lang/String;

    iget-object v3, p0, Ldnh;->b:Ljava/lang/String;

    iget-wide v4, p0, Ldnh;->c:J

    iget-object v6, p0, Ldnh;->d:Landroid/os/Bundle;

    iget-boolean v7, p0, Ldnh;->e:Z

    iget-boolean v8, p0, Ldnh;->f:Z

    iget-boolean v9, p0, Ldnh;->g:Z

    iget-object v10, p0, Ldnh;->h:Ljava/lang/String;

    invoke-static/range {v1 .. v10}, Ldmw;->a(Ldmw;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
