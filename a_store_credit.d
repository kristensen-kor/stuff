import std.stdio;

uint read(File t) {
	uint x;
	t.readf(" %d", &x);
	return x;
}

uint[] readcnt(File t, uint x) {
	uint[] a;
	for (uint i = 0; i < x; i++)
		a ~= read(t);
	return a;
}

uint[2] findpair(uint[] a, uint sum) {
	for (uint i = 0; i < a.length - 1; i++) {
		for (uint j = i + 1; j < a.length; j++) {
			if (a[i] + a[j] == sum) {
				return [i, j];
			}
		}
	}
	return [0, 0];
}

void main() {
	auto t = File("A-large-practice.in", "r");
	auto to = File("A-large-practice.out", "w");
	uint lines = read(t);

	for (uint i = 0; i < lines; i++) {
		uint sum = read(t);
		uint len = read(t);
		uint[] a = readcnt(t, len);
		uint[2] pair = findpair(a, sum);
		to.writefln("Case #%d: %d %d", i + 1, pair[0] + 1, pair[1] + 1);
	}
}

//import std.stdio;

//uint read() {
//	uint x;
//	readf(" %d", &x);
//	return x;
//}

//uint[] readcnt(uint x) {
//	uint[] a;
//	for (uint i = 0; i < x; i++)
//		a ~= read();
//	return a;
//}

//uint[2] findpair(uint[] a, uint sum) {
//	for (uint i = 0; i < a.length - 1; i++) {
//		for (uint j = i + 1; j < a.length; j++) {
//			if (a[i] + a[j] == sum) {
//				return [i, j];
//			}
//		}
//	}
//	return [0, 0];
//}

//void main() {
//	uint lines = read();

//	for (uint i = 0; i < lines; i++) {
//		uint sum = read();
//		uint len = read();
//		uint[] a = readcnt(len);
//		uint[2] pair = findpair(a, sum);
//		writefln("Case #%d: %d %d", i + 1, pair[0] + 1, pair[1] + 1);
//	}
//}