import std.stdio;
import std.array;

void main() {
	auto t = File("in.txt", "r");
	auto to = File("out.txt", "w");
	uint cnt;
	t.readf(" %d ", &cnt);

	string str;

	for (uint i = 0; i < cnt; i++) {
		t.readln(str);
		to.writef("Case #%d:", i + 1);
		foreach (s; split(str).reverse)
			to.writef(" %s", s);
		to.writeln;
	}
}